import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "로그인 | 매장 운영 시스템",
};

/**
 * 로그인 레이아웃 — Navigation 없는 독립 레이아웃
 */
export default function LoginLayout({ children }: { children: React.ReactNode }) {
  return (
    <div className="flex h-dvh w-dvw items-center justify-center bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900">
      {children}
    </div>
  );
}
