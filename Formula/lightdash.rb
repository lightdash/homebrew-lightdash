class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2315.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2315.0/lightdash-cli-0.2315.0-macos-arm64.tar.gz"
      sha256 "7ec54a4c77aac70980d6cb33b6b06daf340657e3b6aae58b0d21aa7a7bdae11c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2315.0/lightdash-cli-0.2315.0-macos-x64.tar.gz"
      sha256 "a078155a6eec9493b5079e33d24f513beaa0a32c7a47246b5c933f29d9925813"
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
