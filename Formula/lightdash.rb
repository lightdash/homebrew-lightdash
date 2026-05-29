class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3055.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3055.0/lightdash-cli-0.3055.0-macos-arm64.tar.gz"
      sha256 "ae9ac657c0253ed694f22e4b6e4b5c31e05189c8df9381aee2ed0969468cbc82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3055.0/lightdash-cli-0.3055.0-macos-x64.tar.gz"
      sha256 "9a728bfd84b5ee945c923dfe2b3edbfc38546f1438e38bc9758dffd9a519d54d"
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
