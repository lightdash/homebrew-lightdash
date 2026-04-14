class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2759.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.0/lightdash-cli-0.2759.0-macos-arm64.tar.gz"
      sha256 "6b7c86d98bc6200464bdee4a170ae66eee3887f150978e218f1c971fa02fcb56"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2759.0/lightdash-cli-0.2759.0-macos-x64.tar.gz"
      sha256 "2ee24be3b12bca03d05c1a87a8c7eb425ce84d3f24116398fd62b6dc6608ddd2"
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
