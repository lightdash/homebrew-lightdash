class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2848.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.0/lightdash-cli-0.2848.0-macos-arm64.tar.gz"
      sha256 "9b26e6ed4b46696b41a71c4bae66952a8aee503109fca87f54393c20c4d3d128"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.0/lightdash-cli-0.2848.0-macos-x64.tar.gz"
      sha256 "ec66e4f99c24da3c1dba447feed2ea8972f65acab2087778e8c5e75fb97fe41c"
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
