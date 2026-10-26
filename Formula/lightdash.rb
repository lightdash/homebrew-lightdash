class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.8/lightdash-cli-3.53.8-macos-arm64.tar.gz"
      sha256 "1f9c39cde994df5d2cc9ebe02acaafbd3ba26b603fa33efd4266ead43416d826"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.8/lightdash-cli-3.53.8-macos-x64.tar.gz"
      sha256 "a6b6144ef560b867fe65b81247f41d53bd07f6eb45a7e083d4256b14635cecd0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.8/lightdash-cli-3.53.8-linux-x64.tar.gz"
    sha256 "2017e46fced5b9589580c0e5dd74fa5dac9a236bd6819cd7f08391938bbcc407"

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
