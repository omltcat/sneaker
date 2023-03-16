export function AboutSettings() {
  return (
    <div className="flex flex-col mt-auto gap-2 text-left">
      <div>
        Sneaker{" "}
        <a
          className="text-blue-500 hover:text-blue-400"
          target="_blank" 
          rel="noopener noreferrer"
          href="https://github.com/b1naryth1ef/sneaker"
        >
          开源项目
        </a>
        .
      </div>
      <div>
        中文本地化{" "}
        <a
          className="text-blue-500 hover:text-blue-400"
          target="_blank" 
          rel="noopener noreferrer"
          href="https://github.com/omltcat/sneaker/"
        >
          Fork
        </a>
        .
      </div>
    </div>
  );
}
