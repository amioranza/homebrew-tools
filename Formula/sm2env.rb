class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/releases/download/v0.1.5/sm2env-v0.1.5-x86_64-apple-darwin.tar.gz"
  sha256 "9214925a3f3c682bea807c951f615b0998802c107e2228e8ce2b6b3f3db897cc"
  version "0.1.5"
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
