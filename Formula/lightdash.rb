class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.3.0/lightdash-cli-1.3.0-macos-arm64.tar.gz"
      sha256 "5e8e86619ebc0068b4cb76ed65d232e886b4603d02e01dbd7658c3d0a0c2531f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.3.0/lightdash-cli-1.3.0-macos-x64.tar.gz"
      sha256 "29dc59f2efce7fc8bf7b104175d86b203c26d4bb2173a8d32b80a73f15e51c47"
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
