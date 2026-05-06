class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2884.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.2/lightdash-cli-0.2884.2-macos-arm64.tar.gz"
      sha256 "cd11661235b5b13f85eb4e66993bd0f35199c12b9c6ffe9f71dd2b2c2633b333"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.2/lightdash-cli-0.2884.2-macos-x64.tar.gz"
      sha256 "8f405531ecdebafd22903fb576ed1eaddbe2cbeb6fbf7febff24f4cebe5081aa"
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
