class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3241.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.3/lightdash-cli-0.3241.3-macos-arm64.tar.gz"
      sha256 "e8adceab1131ed204ec16a56380c5f01fb3816c46e2f22307bdb7ff8a6c5ed30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.3/lightdash-cli-0.3241.3-macos-x64.tar.gz"
      sha256 "66522d132723e17f75c577ecc39d001c5f489ca6ade914506d91d18890c970fd"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
