class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.185.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.2/lightdash-cli-2.185.2-macos-arm64.tar.gz"
      sha256 "f6d380609b5b15aca0da4de0061deb01ed7829232a92699e43bb65b53e8d7aa0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.2/lightdash-cli-2.185.2-macos-x64.tar.gz"
      sha256 "cb38902ca27df8f2cbdcce0c32855e1061274a4caf626cd6bdd9547572dbc432"
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
