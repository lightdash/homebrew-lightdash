class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3420.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.3/lightdash-cli-0.3420.3-macos-arm64.tar.gz"
      sha256 "997ce195019049d8a61ba964fe8ca68a22017e0327ea456c739b2816c4570d96"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.3/lightdash-cli-0.3420.3-macos-x64.tar.gz"
      sha256 "fc3d40e389da19bcff33a29bec6c4545523875deb869c6fdbbc8c47878089160"
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
