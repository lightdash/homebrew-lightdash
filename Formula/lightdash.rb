class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3329.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3329.0/lightdash-cli-0.3329.0-macos-arm64.tar.gz"
      sha256 "cea71431111ef9ae5b9070b0f4816ccc88a5490b0066c941466c1ba53d93ce42"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3329.0/lightdash-cli-0.3329.0-macos-x64.tar.gz"
      sha256 "a2d93b34b7beded698a8654de12b7fe8d7bb632c657b368d9977ce429f99f789"
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
