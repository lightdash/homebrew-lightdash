class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2512.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2512.0/lightdash-cli-0.2512.0-macos-arm64.tar.gz"
      sha256 "d952bb11a348b02c68d6e4bd92927b56c5e4ae5c1c5b9f11211e23130bc550b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2512.0/lightdash-cli-0.2512.0-macos-x64.tar.gz"
      sha256 "fdeb6d18652868fa4bada67e245d9fb56e743dc26e9b2684d59b87770a76497d"
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
