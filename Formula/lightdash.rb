class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.69.0/lightdash-cli-1.69.0-macos-arm64.tar.gz"
      sha256 "a8457ac43a2532825df1f9cdcac123261a261cb3df5ad080b647c686c1373495"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.69.0/lightdash-cli-1.69.0-macos-x64.tar.gz"
      sha256 "a2545bd20c4b56a520bcf8438a8114cb6ce73038d00faf09ac7974c67e37ede2"
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
