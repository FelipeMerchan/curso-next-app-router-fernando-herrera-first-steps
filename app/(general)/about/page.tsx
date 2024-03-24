import type { Metadata } from "next";

export const metadata: Metadata = {
  title: 'SEO Title',
  description: 'SEO Title',
  keywords: ['About page, Information']
};

export default function AboutPage() {
  return (
    <main className="flex flex-col items-center p-24">
      <span className="text-7xl">About Page</span>
    </main>
  )
}