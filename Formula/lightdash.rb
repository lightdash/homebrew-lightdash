class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.130.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.130.0/lightdash-cli-1.130.0-macos-arm64.tar.gz"
      sha256 "236cc57c039a3b316398d3190552f5368bbd0ec0eda744546b609c85e86d7a4c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.130.0/lightdash-cli-1.130.0-macos-x64.tar.gz"
      sha256 "878d3eebf9e46bedd13756a64dcc88cf5de9d3abf074d246db1ce5f42af1ea14"
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
