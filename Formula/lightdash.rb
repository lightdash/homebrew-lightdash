class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3442.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3442.0/lightdash-cli-0.3442.0-macos-arm64.tar.gz"
      sha256 "ccb320ef02b255a5f4982cb0dd7a729ccbd7dd810a534ad63ac52523486d63dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3442.0/lightdash-cli-0.3442.0-macos-x64.tar.gz"
      sha256 "436496fa75bc5ee7942b6804db10363bae8fed9336f6bf62ef1c566bb56032d9"
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
