class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.166.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.166.0/lightdash-cli-1.166.0-macos-arm64.tar.gz"
      sha256 "302da479195afe04ed2a3d91f6a815b80ef7896f95b027f9ff7eda632d3ca59e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.166.0/lightdash-cli-1.166.0-macos-x64.tar.gz"
      sha256 "2d4c40ba9bd92a54ace481c6299051c8f1fc20106f2bdb41281543c8e485a3e4"
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
