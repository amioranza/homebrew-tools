class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c07d79d861ec486a07e13bf6dfb079512f0dab68b59401a3a9b2fed24fea8fab"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "sm2env", shell_output("#{bin}/sm2env --help")
  end
end
