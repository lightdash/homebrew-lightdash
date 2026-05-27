class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3023.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3023.0/lightdash-cli-0.3023.0-macos-arm64.tar.gz"
      sha256 "e2bb0f19b4c4f1df44027ea058a81ed4865edebc273639f536beb18f4a43f404"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3023.0/lightdash-cli-0.3023.0-macos-x64.tar.gz"
      sha256 "eed5c1e5036cbd02c6714d70b4f52735b6d4c6a6adce96f988bb2b6f90a332be"
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
