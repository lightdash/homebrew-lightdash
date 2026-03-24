class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2661.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2661.2/lightdash-cli-0.2661.2-macos-arm64.tar.gz"
      sha256 "dd6218f6827fa08c0e28952ac04564c8d6e8855d3d86d0683a71dbd345026259"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2661.2/lightdash-cli-0.2661.2-macos-x64.tar.gz"
      sha256 "cbadddcd45ffff12e7b9caa802b043a12d9d0d3ec172ca88763337edf746182d"
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
