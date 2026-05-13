class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2924.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.1/lightdash-cli-0.2924.1-macos-arm64.tar.gz"
      sha256 "a492afe09108325db9932c3c3c11b8143ff50c79555f25f091578747bbd0f598"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2924.1/lightdash-cli-0.2924.1-macos-x64.tar.gz"
      sha256 "1b57543f23cce19c721446d27719ca8a90927c5c3dcf645dd453cc8fdf349e58"
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
