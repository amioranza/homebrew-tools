class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "file:///Users/amioranza/Projects/personal/sm2env/release/sm2env-v0.1.3-x86_64-apple-darwin.tar.gz"
  sha256 "f66b367344f71c7f7d810fc542109c27c9e5cf1b958a396bc4f79a95fadb1dfd"
  version "0.1.3"
  license "MIT"

  def install
    # Extract the tarball
    system "tar", "xf", cached_download, "-C", buildpath
    # Install the binary
    bin.install "sm2env"
  end

  test do
    assert_match "sm2env", shell_output("#{bin}/sm2env --help")
  end
end
