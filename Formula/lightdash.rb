class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.537.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.537.0/lightdash-cli-2.537.0-macos-arm64.tar.gz"
      sha256 "f06f10c33b4b77af5a9e4ddf413aa9c461bddfaa8fa1a41751ed2824f18b768c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.537.0/lightdash-cli-2.537.0-macos-x64.tar.gz"
      sha256 "89a90d8be39e52196a202c7b7c56db7e9dafe28032a9c198dd3b0f7e9a44aa8a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.537.0/lightdash-cli-2.537.0-linux-x64.tar.gz"
    sha256 "690941589a5002eeca9819a04854627063d466439e0ddcfd5b73365e167a5605"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
