class Sm2env < Formula
  desc "CLI tool to fetch AWS Secrets Manager secrets and save them as .env files"
  homepage "https://github.com/amioranza/sm2env"
  url "https://github.com/amioranza/sm2env/releases/download/v0.1.1/sm2env-v0.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "3acc04a0cb71b9c1902ca591c91d06ba2dc131ea15de504949ef015aad355d11"
  version "0.1.1"
  license "MIT"

  def install
    system "tar", "-xzf", "sm2env-v0.1.1-x86_64-apple-darwin.tar.gz"
    bin.install "v0.1.1/sm2env"
  end

  test do
    assert_match "sm2env", shell_output("#{bin}/sm2env --help")
  end
end
