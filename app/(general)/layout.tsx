
export default function AboutLayout({
 children
}: {
 children: React.ReactNode;
}) {
  return (
    <main className="flex flex-col items-center p-24">
      <span className="text-5xl">Hola, Mundo</span>
      {children}
    </main>
  );
}