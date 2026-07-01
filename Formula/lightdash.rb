class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3281.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3281.0/lightdash-cli-0.3281.0-macos-arm64.tar.gz"
      sha256 "510c7261e38c1d4a45be95752ec27589f8a7edde745c17a050c6576b6b65964d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3281.0/lightdash-cli-0.3281.0-macos-x64.tar.gz"
      sha256 "38592369d6d7869edff95dd095f016b5a826336b1bca188e89b7b712d730c055"
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
