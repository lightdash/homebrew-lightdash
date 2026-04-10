class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2747.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2747.0/lightdash-cli-0.2747.0-macos-arm64.tar.gz"
      sha256 "0e70f4c66db08f58e13db8318ed396f3d11da7fbdb92c3759984d753e740bd69"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2747.0/lightdash-cli-0.2747.0-macos-x64.tar.gz"
      sha256 "9053bc06011b958ef2a98fbc2ff65d249a402f919ea906403d589986fe9d6acd"
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
