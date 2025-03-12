class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/releases/download/v0.1.3/sm2env-v0.1.3-x86_64-apple-darwin.tar.gz"
  sha256 "9c9d868c32a1352478f77e773cff0af7a73fe84646fe76bbb50f3b702bdc5d2e"
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
