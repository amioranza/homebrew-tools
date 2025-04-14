class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/releases/download/v0.1.4/sm2env-v0.1.4-x86_64-apple-darwin.tar.gz"
  sha256 "d2a82d110f203a777419c6120a3f4f239c14529e9572e19a461d13f225215709"
  version "0.1.4"
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
