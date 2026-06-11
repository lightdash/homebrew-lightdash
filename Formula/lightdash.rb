class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3144.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3144.0/lightdash-cli-0.3144.0-macos-arm64.tar.gz"
      sha256 "207370e4f059f5d1ad8bc7e63834d1da6a0036cb412ce83f791a77b1abe25183"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3144.0/lightdash-cli-0.3144.0-macos-x64.tar.gz"
      sha256 "2be392b7c58502c9eb58fd38419ee7ec377298067416384d80d0d3603b328959"
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
