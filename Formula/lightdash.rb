class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3022.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.2/lightdash-cli-0.3022.2-macos-arm64.tar.gz"
      sha256 "f36c73d22f3219a5eff893980a5bc1a4b10272a548c4694d9a769266f9cfa40f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.2/lightdash-cli-0.3022.2-macos-x64.tar.gz"
      sha256 "76ab18f04cac181a89a6f39c491514a818cc4a559cfad21c7637b1de4cb643d3"
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
