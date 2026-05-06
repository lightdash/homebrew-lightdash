class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2884.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.0/lightdash-cli-0.2884.0-macos-arm64.tar.gz"
      sha256 "994d2be24fceba4454777310756e57292978f4cd7672e41fd8da517eedfe4885"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2884.0/lightdash-cli-0.2884.0-macos-x64.tar.gz"
      sha256 "26e5269ce90d92beb9f265f707892641d96217378ba882be14902bffcc0cd2f9"
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
