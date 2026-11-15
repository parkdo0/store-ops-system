Get-ChildItem -Recurse -Path ".\src\app\api" -Filter "route.ts" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $methods = [regex]::Matches($content, 'export async function (GET|POST|PUT|PATCH|DELETE)') | ForEach-Object { $_.Groups[1].Value }
    $rel = $_.FullName.Replace((Resolve-Path ".\src\app\api").Path + "\", "")
    Write-Output "$rel`: $($methods -join ', ')"
}
