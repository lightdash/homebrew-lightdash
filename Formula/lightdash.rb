class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2279.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2279.0/lightdash-cli-0.2279.0-macos-arm64.tar.gz"
      sha256 "db63019e1cd7c94eaf8dbde411db9942dd5d7d399cc6b72d5572d6099db928a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2279.0/lightdash-cli-0.2279.0-macos-x64.tar.gz"
      sha256 "0cd869558f3ac626a9ed3375cd42565cfd27eab22b1a0d33aeb2cf9ab5975433"
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
