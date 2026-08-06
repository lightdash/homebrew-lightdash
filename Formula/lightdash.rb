class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.95.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.95.1/lightdash-cli-1.95.1-macos-arm64.tar.gz"
      sha256 "a4713dd19b506ba4589f469353e0f56501d95a6edac004c19cda303d4e1b6de1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.95.1/lightdash-cli-1.95.1-macos-x64.tar.gz"
      sha256 "a625c310cb40913f690cc7f1cc98f91b4a7013a0d4f1ada640d65a582572b3b0"
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
