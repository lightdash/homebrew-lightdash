class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3256.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3256.0/lightdash-cli-0.3256.0-macos-arm64.tar.gz"
      sha256 "8a64a2111d0cab9f4e9d1511029f2f4bc795025911eb11c8cbf436da30bbca0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3256.0/lightdash-cli-0.3256.0-macos-x64.tar.gz"
      sha256 "6b851d42881e5f0967ff9b194ba0663ed9417155929f677a42239478314a983f"
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
