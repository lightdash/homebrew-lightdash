class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3089.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.2/lightdash-cli-0.3089.2-macos-arm64.tar.gz"
      sha256 "40b696b999c558d417ec20a7f946cc733af986077a8d4b444c11aae9c4c82c27"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3089.2/lightdash-cli-0.3089.2-macos-x64.tar.gz"
      sha256 "a7dff96ce5b77ab5d57a9bac0111d2dfa050c4c478293494143dcfa4a1c6e121"
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
