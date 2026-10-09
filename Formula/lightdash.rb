class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.526.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.526.0/lightdash-cli-2.526.0-macos-arm64.tar.gz"
      sha256 "6098c9a2607c4e275df0d86101a424b25196aebc6d73446eade204770284afe4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.526.0/lightdash-cli-2.526.0-macos-x64.tar.gz"
      sha256 "f9ac37f7f8691c130c079137dc159b45c40ab581e9762c1d5a9f30818f41681e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.526.0/lightdash-cli-2.526.0-linux-x64.tar.gz"
    sha256 "c6b97e91c8af813c2644936136b924abb4c644428aaceef27d8d2b3ed7c18967"

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
