class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3080.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.2/lightdash-cli-0.3080.2-macos-arm64.tar.gz"
      sha256 "f894050cb2eb476ab9bf110091af9bdbb313ee2b90a293360afc156791c20037"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3080.2/lightdash-cli-0.3080.2-macos-x64.tar.gz"
      sha256 "65ec97d205834ff68bb8c00ab55ddf30e2555453bb70b3c87f9b82aa1ab1e1ed"
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
