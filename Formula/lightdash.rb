class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3291.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3291.0/lightdash-cli-0.3291.0-macos-arm64.tar.gz"
      sha256 "f4ece1b3454b6794baa8c18a108ec161d94bb10fc01422c5ef015f37648c21e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3291.0/lightdash-cli-0.3291.0-macos-x64.tar.gz"
      sha256 "879f4aed2451900fe944f91c6ef616e276b30ca16a71de63602ae863dd3759ba"
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
