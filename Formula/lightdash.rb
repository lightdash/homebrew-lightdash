class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3332.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3332.0/lightdash-cli-0.3332.0-macos-arm64.tar.gz"
      sha256 "425b1e33824d47fa089aec09d3b95d08108de863d7a29ce5637f93705c235c0d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3332.0/lightdash-cli-0.3332.0-macos-x64.tar.gz"
      sha256 "b0de7041f168702c0fb67df5af7562954e0d0e8e77282af5ab93158fdfae3d81"
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
