class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2408.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2408.0/lightdash-cli-0.2408.0-macos-arm64.tar.gz"
      sha256 "80e64353385028556bb90778eeffae9416ffa578065af66603f0584511953292"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2408.0/lightdash-cli-0.2408.0-macos-x64.tar.gz"
      sha256 "512c312049cb9689a8da5af1e013edd2fb2d4e3b142e29bb7be425471620498d"
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
