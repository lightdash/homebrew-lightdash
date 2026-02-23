class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2505.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.1/lightdash-cli-0.2505.1-macos-arm64.tar.gz"
      sha256 "773277a497b1c1ba9242d6cf01e790b8ec17a35c2f396d17e8bcc8dddeb88786"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.1/lightdash-cli-0.2505.1-macos-x64.tar.gz"
      sha256 "4b4e17add23ed325da098b067aefcba1995aa1103c06ece7dcc923739b0e8cc2"
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
