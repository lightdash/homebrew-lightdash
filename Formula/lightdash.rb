class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2951.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2951.1/lightdash-cli-0.2951.1-macos-arm64.tar.gz"
      sha256 "d7c0385bdf2e76d7eb19ddd9f1b5dbb98b94959dd5be0cf3471a292c8abe2aa2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2951.1/lightdash-cli-0.2951.1-macos-x64.tar.gz"
      sha256 "94cae7018f72b200b142af5ecdf726cba7ee28a75573ba682cf342583a8eb6bb"
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
