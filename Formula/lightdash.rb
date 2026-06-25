class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3241.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.2/lightdash-cli-0.3241.2-macos-arm64.tar.gz"
      sha256 "69e956e053dacc8c720d7c1367952f0b67800f2b16afd89837786a46ad1f32a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3241.2/lightdash-cli-0.3241.2-macos-x64.tar.gz"
      sha256 "af3e2ca358255cd111894065c6b5a451119d0d0762e4f2ac9047f9da1060e019"
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
