class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2984.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.0/lightdash-cli-0.2984.0-macos-arm64.tar.gz"
      sha256 "5cfcad7634fcea4423c35fdcbb3386d8ccc29d75aff168a7c2f9b7e637b06b10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.0/lightdash-cli-0.2984.0-macos-x64.tar.gz"
      sha256 "e84ad3b9b87f24ef65b33bff12a7c0a05d106895cb49c0e410568fd1bd6e6cac"
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
