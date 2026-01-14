class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2340.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2340.1/lightdash-cli-0.2340.1-macos-arm64.tar.gz"
      sha256 "b6f4158da55d595264e504fb5992e761fe06262768f482bd50145ef59520d7a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2340.1/lightdash-cli-0.2340.1-macos-x64.tar.gz"
      sha256 "b8f6b1c356bdafa9806a071dd5ba8588149d3d41f4e6b35de1b1a59931275bf7"
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
