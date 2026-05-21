import React from "react";

// Render product rich text content. Accepts HTML (from the editor) or legacy **bold**/*italic* markdown.
export function SimpleMarkdown({ children, className }: { children: string; className?: string }) {
  if (!children) return null;

  // HTML content from the rich text editor — render directly
  if (/<\/?[a-z][\s\S]*>/i.test(children)) {
    return (
      <span
        className={className}
        dangerouslySetInnerHTML={{ __html: children }}
      />
    );
  }

  // Legacy markdown fallback
  const lines = children.split("\n");

  function parseLine(line: string, lineKey: number): React.ReactNode {
    const nodes: React.ReactNode[] = [];
    const regex = /\*\*(.+?)\*\*|\*(.+?)\*/g;
    let lastIndex = 0;
    let match: RegExpExecArray | null;
    let key = 0;

    while ((match = regex.exec(line)) !== null) {
      if (match.index > lastIndex) {
        nodes.push(line.slice(lastIndex, match.index));
      }
      if (match[1] !== undefined) {
        nodes.push(<strong key={key++}>{match[1]}</strong>);
      } else if (match[2] !== undefined) {
        nodes.push(<em key={key++}>{match[2]}</em>);
      }
      lastIndex = match.index + match[0].length;
    }

    if (lastIndex < line.length) {
      nodes.push(line.slice(lastIndex));
    }

    return <span key={lineKey}>{nodes}</span>;
  }

  return (
    <span className={className}>
      {lines.map((line, i) => (
        <React.Fragment key={i}>
          {parseLine(line, i)}
          {i < lines.length - 1 && "\n"}
        </React.Fragment>
      ))}
    </span>
  );
}
