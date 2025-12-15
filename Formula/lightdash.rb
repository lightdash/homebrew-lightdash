class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2252.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2252.0/lightdash-cli-0.2252.0-macos-arm64.tar.gz"
      sha256 "e2464fe8623f642e770f4d58f0d8328f5bd9452ce6c5e28dfc38e391fba3bc4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2252.0/lightdash-cli-0.2252.0-macos-x64.tar.gz"
      sha256 "8ddf2af17906931a09cbf455ce5b51bab2b4d666e4046d655c9b4bd2a2d8e3e1"
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
