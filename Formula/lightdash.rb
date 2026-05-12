class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2916.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2916.0/lightdash-cli-0.2916.0-macos-arm64.tar.gz"
      sha256 "5cda032229e3693d3ee27a6e7f1e92aafc2d44297389eb5c168a6f392b9e2625"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2916.0/lightdash-cli-0.2916.0-macos-x64.tar.gz"
      sha256 "1c50576301f5379f155d381596de5e677b789a76e8b9eb027a1b44a4b490c6ea"
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
