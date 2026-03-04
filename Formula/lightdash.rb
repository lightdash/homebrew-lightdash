class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2565.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.3/lightdash-cli-0.2565.3-macos-arm64.tar.gz"
      sha256 "6de81d34f52345f4cf5c8cfadc28872c95e55d7b75d56b131b2bbd0aad8298b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2565.3/lightdash-cli-0.2565.3-macos-x64.tar.gz"
      sha256 "1f89c99f2fddb78f6f018c74cf57ff4446779808283e5dcd7042985e15a072ce"
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
