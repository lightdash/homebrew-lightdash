class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3299.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3299.0/lightdash-cli-0.3299.0-macos-arm64.tar.gz"
      sha256 "784b92c05eb5b0eabc4b225e190f52fa30e545bf388644877a7de532bc2e0c54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3299.0/lightdash-cli-0.3299.0-macos-x64.tar.gz"
      sha256 "98ee4299e84cde78b9fbea52255ff025d5c0700bca15471f94f24388e950eccd"
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
