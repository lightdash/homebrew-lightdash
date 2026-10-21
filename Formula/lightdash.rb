class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.14.0/lightdash-cli-3.14.0-macos-arm64.tar.gz"
      sha256 "b152d52aa351b6f89653a1c1da59a1ec1eb03a4b569a6229d217c38f1d156499"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.14.0/lightdash-cli-3.14.0-macos-x64.tar.gz"
      sha256 "2e8103f9e7189b7f37590ae4b191f3c9160c639296f45c1abb80da7fc6286855"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.14.0/lightdash-cli-3.14.0-linux-x64.tar.gz"
    sha256 "fc460501c4ed7db098a5bc5ab9125c1d2c50e95a8fcf8462239140c0506e2e77"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
