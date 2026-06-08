class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.0/lightdash-cli-0.3110.0-macos-arm64.tar.gz"
      sha256 "b403897bdb878d443783713b51bb6de5a19134e0ab2f33d68dde883f1a795d3f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.0/lightdash-cli-0.3110.0-macos-x64.tar.gz"
      sha256 "3bc9d6759845b8b454a7152218160e9dfba950da00cad5545fe0a351b68b3a21"
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
