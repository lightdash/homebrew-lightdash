class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3407.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3407.0/lightdash-cli-0.3407.0-macos-arm64.tar.gz"
      sha256 "a1ede24e42d729cbb9f32a191f9bfa3a3beb13cf332e4f458e8aaba959d943fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3407.0/lightdash-cli-0.3407.0-macos-x64.tar.gz"
      sha256 "e87135ae7a2f35e71472f8e1d957ee245b1d4158aa0fe36f51799736727a7731"
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
