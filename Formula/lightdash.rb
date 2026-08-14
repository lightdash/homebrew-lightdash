class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.1/lightdash-cli-1.162.1-macos-arm64.tar.gz"
      sha256 "c1a9e5004a914f80715c1d432a73c58c5c3aaebc1fb0d87f6852eb8e28060aa2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.1/lightdash-cli-1.162.1-macos-x64.tar.gz"
      sha256 "09757114a6c74d996f857210143be92a117d88eaafba4263f1e737f29d8a3993"
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
