class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/releases/download/v0.1.2/sm2env-v0.1.2-x86_64-apple-darwin.tar.gz"
  sha256 "94287ac71ce902631231fffa7ac8de7d25a0fd5dea16da5e205c36c210b5cfab"
  version "0.1.2"
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
