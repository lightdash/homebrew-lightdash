class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.176.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.0/lightdash-cli-3.176.0-macos-arm64.tar.gz"
      sha256 "0dbdbeb849e34a36b88a771abab5cad2cacbbea1239734146eb3906403950cb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.176.0/lightdash-cli-3.176.0-macos-x64.tar.gz"
      sha256 "a55fbe4bcd5f14728f4e1ff528ee8203eb2020580b0a934660d2b63b6a77f667"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.176.0/lightdash-cli-3.176.0-linux-x64.tar.gz"
    sha256 "ab7f7cc132fbfd79b9bda8ab9e869a2ce0bbaa4523ca404f75adfde2af3bd836"

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
